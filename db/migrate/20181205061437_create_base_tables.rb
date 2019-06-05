class CreateBaseTables < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.bigint :gender_id, null: false
      t.datetime :birth
      t.string :phone
      t.string :email
      t.string :job
      t.bigint :industry_id
      t.string :address
      t.bigint :guest_from_id
      t.timestamps null: false
    end

    create_table :genders do |t|
      t.string :name
      t.timestamps null: false

      t.index :name, unique: true
    end

    create_table :industries do |t|
      t.string :name
      t.timestamps null: false

      t.index :name, unique: true
    end

    create_table :guest_froms do |t|
      t.string :name
      t.timestamps null: false

      t.index :name, unique: true
    end

    create_table :services do |t|
      t.string :name
      t.decimal :price, precision: 10, scale: 2, null: false, default: 0.0
      t.decimal :cost, precision: 10, scale: 2, null: false, default: 0.0
      t.timestamps null: false
    end

    create_table :babers do |t|
      t.string :name, null: false
      t.datetime :birth, null: false
      t.bigint :gender_id, null: false
      t.string :phone, null: false
      t.string :email
      t.string :address
      t.timestamps null: false
    end

    create_table :products do |t|
      t.string :name, null: false
      t.decimal :price, precision: 10, scale: 2, null: false, default: 0.0
      t.decimal :cost, precision: 10, scale: 2, null: false, default: 0.0
      t.integer :quantity, null: false, default: 0
      t.timestamps null: false
    end

    create_table :orders do |t|
      t.bigint :user_id, null: false
      t.bigint :baber_id, null: false
      t.bigint :pay_type_id, null: false
      t.bigint :arrival_type_id
      t.datetime :happened_at, null: false
      t.decimal :discount, precision: 10, scale: 2, null: false, default: 0.0
      t.timestamps null: false
    end

    create_table :pay_types do |t|
      t.string :name
      t.timestamps null: false

      t.index :name, unique: true
    end

    create_table :arrival_types do |t|
      t.string :name
      t.timestamps null: false

      t.index :name, unique: true
    end

    create_table :orders_services do |t|
      t.belongs_to :order
      t.belongs_to :service
      t.timestamps null: false
    end

    create_table :orders_products do |t|
      t.belongs_to :order
      t.belongs_to :product
      t.timestamps null: false
    end

  end
end
