class OldYear < ActiveHash::Base
  self.data = [
    {id: 0, name: '--'}, {id: 1, name: '0才'}, {id: 2, name: '1才'},
    {id: 3, name: '2才'}, {id: 4, name: '3才'}, {id: 5, name: '4才'},
    {id: 6, name: '5才'}, {id: 7, name: '6才'}, {id: 8, name: '7才'},
    {id: 9, name: '8才'}, {id: 10, name: '9才'}, {id: 11, name: '10才'}
    ]

  include ActiveHash::Associations
  has_many :animals
end
