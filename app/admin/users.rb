ActiveAdmin.register User do
  menu label: '客户', priority: 2
  permit_params :name, :gender_id, :birth, :phone, :email, :job, :industry_id, :address, :guest_from_id

  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :name, label: '姓名'
      f.input :gender, label: '性别'
      f.input :birth, label: '生日', as: :datepicker, datepicker_options: {defaultDate: "1990-01-01"}
      f.input :phone, label: '电话'
      f.input :email, label: '邮箱'
      f.input :job, label: '工作'
      f.input :industry, label: '行业'
      f.input :address, label: '地址'
      f.input :guest_from, label: '客户来源'
    end
    f.actions
  end
end
