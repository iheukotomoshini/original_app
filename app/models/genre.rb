class Genre < ActiveHash::Base
  self.data = [
    {id: 1, name: "---" },
    {id: 2, name: "日用品・文房具"},
    {id: 3, name: "大型機器"},
    {id: 4, name: "小型機器"},
    {id: 5, name: "PC関連"},
    {id: 6, name: "その他"},
  ]

  include ActiveHash::Associations
end