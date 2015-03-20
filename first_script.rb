require 'rubygems'
require 'watir-webdriver'
require_relative 'adoption_helper'   #call to include a file in the same directory as the file it is required from.

include AdoptionHelper      #class whole as module and request it here

goto_the_puppy_adoption_site
adopt_puppy_number 1
continue_adopting_puppies
adopt_puppy_number 2
checkout_with('Cheezy', '123 Main', 'cheezy@foo.com', 'Check')
verify_page_contains 'Thank you for adopting a puppy!'
close_the_browser

