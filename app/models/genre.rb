class Genre < ActiveHash::Base
  self.data = [
      {id: 1, name: '音楽'}, {id: 2, name: 'アニメ'}, {id: 3, name: 'ゲーム'},
      {id: 4, name: '飲み会'}, {id: 5, name: '食事'}, {id: 6, name: 'カラオケ'},
      {id: 7, name: 'スポーツ'},{id: 8, name: '運動'}, {id: 9, name: 'その他'},
  ]
end
