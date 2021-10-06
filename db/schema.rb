# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_09_22_221353) do

  create_table "compras", force: :cascade do |t|
    t.integer "codigo_producto"
    t.string "nombre_del_cliente"
    t.integer "identificacion_del_cliente"
    t.date "fecha_de_compra"
    t.string "tipo_producto"
    t.string "forma_de_pago"
    t.integer "stoockdeproducto_id"
    t.integer "producto_id"
    t.integer "usuario_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "organizaciones", force: :cascade do |t|
    t.string "tipo_de_organizacion"
    t.string "numero_de_empleado"
    t.string "representantes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "personas", force: :cascade do |t|
    t.integer "cedula"
    t.string "genero"
    t.date "fecha_nacimiento"
    t.integer "telefono"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "productos", force: :cascade do |t|
    t.integer "codigo"
    t.string "nombre"
    t.string "referencia"
    t.integer "stock"
    t.string "remitente"
    t.integer "tipo_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "proveedores", force: :cascade do |t|
    t.integer "codigo"
    t.string "nombre"
    t.string "correoelectronico"
    t.integer "telefono"
    t.string "direccion"
    t.string "ciudad"
    t.text "destinario"
    t.integer "organizacione_id"
    t.integer "persona_id"
    t.integer "compra_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reclamos", force: :cascade do |t|
    t.integer "codigo"
    t.integer "identificacion_del_cliente"
    t.string "nombre_del_cliente"
    t.string "producto_adquirido"
    t.date "fecha_de_compra"
    t.string "estado_del_producto"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "registrodetrabajadores", force: :cascade do |t|
    t.string "nombre"
    t.integer "edad"
    t.string "cargo"
    t.integer "telefono"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "registros", force: :cascade do |t|
    t.integer "identificacion"
    t.string "nombre"
    t.string "correo_electronico"
    t.date "fecha_de_nacimiento"
    t.string "direccion"
    t.string "cargo"
    t.string "ciudad"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stoockdeproductos", force: :cascade do |t|
    t.integer "codigo"
    t.string "proveedor"
    t.integer "cantidad_existente"
    t.string "referencia"
    t.string "tipo"
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tipos", force: :cascade do |t|
    t.string "tipo"
    t.string "estado"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "usuarios", force: :cascade do |t|
    t.integer "identificacion"
    t.string "nombre"
    t.integer "telefono"
    t.string "direccion"
    t.integer "reclamo_id"
    t.integer "registrodetrabajadore_id"
    t.integer "registro_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
