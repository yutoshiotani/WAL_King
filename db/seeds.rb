# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
   email: 'admin@admin',
   password: '111111'
)

#ジャンル
  Job.create!([
    {name: "ユーザー"},
    {name: "医師"},
    {name: "医療職"},
    {name: "栄養士"}
  ])
  
  Tag.create!([
    {name: "ウォーキング"},
    {name: "記事"},
    {name: "運動記録"},
    {name: "サイクリング"}
  ])