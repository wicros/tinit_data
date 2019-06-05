ActiveAdmin.register Order do
  menu label: '订单',  priority: 1
  permit_params :user_id, :baber_id, :pay_type_id, :arrival_type_id, :happened_at, service_ids: [], product_ids: []

  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :user, label: '客户'
      f.input :baber, label: '理发师'
      f.input :pay_type, label: '支付方式'
      f.input :arrival_type, label: '到达方式'
      f.input :happened_at, label: '发生时间', as: :datepicker, datepicker_options: {min_date: "1960-1-1"}
      f.input :services, as: :check_boxes, collection: Service.all
      f.input :products, as: :check_boxes, collection: Product.all
    end
    f.actions
  end
end
