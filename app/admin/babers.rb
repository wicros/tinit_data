ActiveAdmin.register Baber do
  menu label: '理发师', priority: 4
  permit_params :name, :gender_id, :birth, :phone, :address

  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :name, label: '姓名'
      f.input :gender, label: '性别'
      f.input :birth, label: '生日', as: :datepicker, datepicker_options: {defaultDate: "1990-01-01"}
      f.input :phone, label: '电话'
      f.input :email, label: '邮箱'
      f.input :address, label: '地址'
    end
    f.actions
  end
end
