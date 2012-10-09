#
# String   "fb_user"
# String   "brand"
# String   "description"
# String   "tags"
#
class Brand < ActiveRecord::Base

  def load_koala_graph(koala_graph)
    graph_hash = koala_graph.get_object('me')
    # self.fb_id   = graph_hash['id'] # Maybe we should keep this unique id because not every fb user has a username
    self.fb_user = graph_hash['username']
    self.brand   = graph_hash['name']
    self.description = graph_hash['bio'] || graph_hash['about']

    self
  end

end
