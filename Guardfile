# A sample Guardfile
# More info at https://github.com/guard/guard#readme

## Uncomment and set this to only include directories you want to watch
# directories %w(app lib config test spec features) \
#  .select{|d| Dir.exists?(d) ? d : UI.warning("Directory #{d} does not exist")}

## Note: if you are using the `directories` clause above and you are not
## watching the project directory ('.'), then you will want to move
## the Guardfile to a watched dir and symlink it back, e.g.
#
#  $ mkdir config
#  $ mv Guardfile config/
#  $ ln -s config/Guardfile .
#
# and, you'll have to watch "config/Guardfile" instead of "Guardfile"

# Sample guardfile block for Guard::Haml
# You can use some options to change guard-haml configuration
# output: 'public'                   set output directory for compiled files
# input: 'src'                       set input directory with haml files
# run_at_start: true                 compile files when guard starts
# notifications: true                send notifictions to Growl/libnotify/Notifu
# haml_options: { ugly: true }    pass options to the Haml engine

# guard :haml, input: 'app/application.html.haml', output:'bin_app/views' do
#   watch(/^.+(\.html\.haml)$/)
# end

guard :sass, input: "app/style", output:"bin_app/style" do
	watch(/.+(\.s[ac]ss)$/)
end



require 'opal'
require 'opal-jquery'
require 'opal-haml'
Opal.append_path 'app'
Opal.append_path 'app/models'
Opal.append_path 'app/views'
Opal.append_path 'app/controllers'

guard :shell, input:'app', output:'bin_app' do

	# watch(/^.+(\.rb)$/) do |m|
	watch(/^.+(\.rb|\.haml)$/) do |m| #Also update when views are changed, so opal-haml can reload them.
		begin
			

			compiler_output = Opal::Builder.build('application').to_s
			File.binwrite('bin_app/application.js', compiler_output)

			n m[0], "Updating Opal .rb -> .js", :success

		rescue Exception => e
			n m[0], "Opal Error: #{e.message}", :error
			puts e.message
			puts e.backtrace
		end

	end
end