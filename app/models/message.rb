class Message < ActiveRecord::Base
    
  
  # このヘルパーは、指定された属性が空でないことを確認します。>presence
  # validates 検証するフィールド名, ...[検証条件]
  
  # 名前は必須入力かつ20文字以内
  validates :name , length: { maximum: 20 } , presence: true
  # 内容は必須入力かつ2文字以上30文字以下
  validates :body , length: { minimum: 2, maximum: 30 } , presence: true  
    
end
