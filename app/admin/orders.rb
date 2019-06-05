ActiveAdmin.register Order do
  menu label: '订单',  priority: 1
  permit_params :user_id, :baber_id, :pay_type_id, :arrival_type_id, :happened_at, :discount,
                service_ids: [], product_ids: []

  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :user, label: '客户'
      f.input :baber, label: '理发师'
      f.input :pay_type, label: '支付方式'
      f.input :arrival_type, label: '到达方式'
      f.input :happened_at, label: '发生时间', as: :datepicker, datepicker_options: {max_date: Time.current}
      f.input :services, label: '服务', as: :check_boxes, collection: Service.all
      f.input :products, label: '产品', as: :check_boxes, collection: Product.all
      f.input :discount, label: '折扣'
    end
    f.actions
  end
end
