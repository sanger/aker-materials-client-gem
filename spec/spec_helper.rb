$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
Dir["./spec/support/**/*.rb"].sort.each {|f| require f }
require "matcon_client"

RSpec.configure do
	MatconClient::Material.schema = HashWithIndifferentAccess.new("properties": { "gender": {}, "donor_id": {}, "common_name": {} })
	MatconClient::Container.schema = HashWithIndifferentAccess.new("properties": { "num_of_rows": {}, "num_of_cols": {}, "row_is_alpha": {}, "col_is_alpha": {}, "slots": {}, "barcode": {} })
end
