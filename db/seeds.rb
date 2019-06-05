ApplicationRecord.transaction do
  Gender.create!(name: '男')
  Gender.create!(name: '女')
  Gender.create!(name: '其他')

  Industry.create!(name: '学生')
  Industry.create!(name: '餐饮')
  Industry.create!(name: '金融')
  Industry.create!(name: 'IT')
  Industry.create!(name: '自由职业')

  GuestFrom.create!(name: '朋友介绍')
  GuestFrom.create!(name: '线下销售')
  GuestFrom.create!(name: '店主开发')

  PayType.create!(name: '支付宝')
  PayType.create!(name: '微信')
  PayType.create!(name: '现金')
  PayType.create!(name: '信用卡')

  ArrivalType.create!(name: '驾车')
  ArrivalType.create!(name: '滴滴')
  ArrivalType.create!(name: '公共交通')

  AdminUser.create!(email: 'jason@tint.com', password: 'tint10!aa_jasonbe_humble', password_confirmation: 'tint10!aa_jasonbe_humble')
end

