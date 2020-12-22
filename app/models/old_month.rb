class OldMonth < ActiveHash::Base
  self.data = [
    {id: 0, name: '--'}, {id: 1, name: '1ヶ月'}, {id: 2, name: '2ヶ月'},
    {id: 3, name: '3ヶ月'}, {id: 4, name: '4ヶ月'}, {id: 5, name: '5ヶ月'},
    {id: 6, name: '6ヶ月'}, {id: 7, name: '7ヶ月'}, {id: 8, name: '8ヶ月'},
    {id: 9, name: '9ヶ月'}, {id: 10, name: '10ヶ月'}, {id: 11, name: '11ヶ月'}
    ]

  include ActiveHash::Associations
  has_many :animals
end
