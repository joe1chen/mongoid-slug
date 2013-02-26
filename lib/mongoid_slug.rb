require 'mongoid'
require 'stringex'
require 'mongoid/slug'
require 'mongoid/slug/criteria'
require 'mongoid/slug/unique_slug'
require 'mongoid/slug/slug_id_strategy'

# Patches for mongoid 2.x
require 'mongoid/slug/named_scope'
require 'mongoid/slug/fields/internal/localized'