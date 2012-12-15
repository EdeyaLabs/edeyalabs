namespace :cloudinary do
  # add the non-image files that you need to host in Cloudinary
  files = [ 'application.js', 'application.css' ]

  task :sync_non_images => :environment do
    # precompile assets so that we have minified js and css
    `bundle exec rake assets:precompile`
    # delete existing files in Cloudinary to avoid duplicates
    files.each { |f| Cloudinary::Uploader.destroy(f.gsub(".", "_")) }
    # upload files to Cloudinary, where IDs are the filename with "." replaced with "_" and tag them appropriately
    assets = []
    files.each { |f| assets << Cloudinary::Uploader.upload(File.open("#{Rails.root}/public/assets/#{f}"), :resource_type => :raw, :public_id => f.gsub(".", "_"), :tags => ["js_and_css"]) }
    Settings.static_assets = assets
    # delete the precompile directory after uploading
    `rm -rf public/assets`
  end

end
