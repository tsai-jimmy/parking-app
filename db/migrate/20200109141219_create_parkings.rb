class CreateParkings < ActiveRecord::Migration[6.0]
  def change
    create_table :parkings do |t|
      t.string :parking_type, comment: '费率类型: guest, short-term, long-term'
      t.datetime :start_at, comment: '开始时间'
      t.datetime :end_at, comment: '结束时间'
      t.integer :amount, comment: '总金额(分)'
      t.integer :user_id, :index => true
      t.timestamps
    end
  end
end
