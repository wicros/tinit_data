ActiveAdmin.register PayType do
  menu label: '支付方式'
  permit_params :name
end
