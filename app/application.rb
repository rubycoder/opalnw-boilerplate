require 'opal'
require 'opal-jquery'
require 'opal-haml'


require_tree 'helpers/'
require_tree 'models/'
require_tree 'controllers/'
require_tree 'views/*' #This line still does not seem to load all views automatically.
require 'views/example.haml'



Document.ready? do
	# Do some amazing stuff here!
	puts (Template['views/example.haml'].inspect);
	Element.find('body').html(Template['views/example.haml'].render())
end
