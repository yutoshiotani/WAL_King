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
    {name: "サイクリング"},
    {name: "食事"}
  ])
  
  User.create!(
  [
    {email: 'a@a', name: 'ユーザー1', password: '123456', body: 'よろしくお願いします', age: '30' , gender: 1 ,
    height: '170', weight: '80', problem: '肥満', status: 'disclosure', job_id: '1',
    profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/men.jpg"), filename: "men_run.jpg")},
     {email: 'b@b', name: 'ユーザー2', password: '123456', body: 'よろしくお願いします', age: '25' , gender: 1 ,
    height: '175', weight: '60', problem: 'DM(type1)', status: 'disclosure', job_id: '1',
    profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/men.jpg"), filename: "men_golf.jpg")},
     {email: 'c@c', name: 'ユーザー3', password: '123456', body: 'よろしくお願いします', age: '35' , gender: 1 ,
    height: '170', weight: '80', problem: '高血圧', status: 'secret', job_id: '1',
    profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/men.jpg"), filename: "men_run2.jpg")},
     {email: 'd@d', name: 'ユーザー4', password: '123456', body: 'よろしくお願いします', age: '45' , gender: 1 ,
    height: '170', weight: '80', problem: '高脂血症', status: 'secret', job_id: '1',
    profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/men.jpg"), filename: "men_walk.jpg")},
     {email: 'e@e', name: 'ユーザー5', password: '123456', body: 'よろしくお願いします', age: '40' , gender: 2 ,
    height: '158', weight: '70', problem: '肥満', status: 'secret', job_id: '1',
    profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/men.jpg"), filename: "women_sitting.jpg")},
     {email: 'f@f', name: 'ユーザー6', password: '123456', body: 'よろしくお願いします', age: '30' , gender: 2 ,
    height: '160', weight: '55', problem: 'なし', status: 'disclosure', job_id: '1',
    profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/men.jpg"), filename: "women_run.jpg")},
     {email: 'g@g', name: 'サンプルRd.1', password: '123456', body: 'よろしくお願いします', age: '35' , gender: 1 ,
    height: '170', weight: '65', problem: '情報提供', status: 'disclosure', job_id: '4',
    profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/men.jpg"), filename: "men.jpg")},
     {email: 'h@h', name: 'サンプルNs.1', password: '123456', body: 'よろしくお願いします', age: '30' , gender: 1 ,
    height: '155', weight: '50', problem: '相談', status: 'disclosure', job_id: '2',
    profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/men.jpg"), filename: "women_profile.jpg")},
     {email: 'j@j', name: 'サンプルDr.1', password: '123456', body: 'よろしくお願いします', age: '50' , gender: 1 ,
    height: '180', weight: '66', problem: '情報提供', status: 'disclosure', job_id: '1',
    profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/men.jpg"), filename: "men_profile.jpg")},
  ]
)

Post.create!(
  [
    {title: 'テスト投稿1', body: '歩きました', count: '16000', user_id: 1, status: 'disclosure', post_tag_id: 1,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/outside1.jpg"), filename: "outside1.jpg")}
  ]
)

  Step.create!(
    [
      {count: '4000', date: '2023-01-01', user_id: 1,},
      {count: '3500', date: '2023-01-02', user_id: 1,},
      {count: '4200', date: '2023-01-03', user_id: 1,},
      {count: '800', date: '2023-01-04', user_id: 1,},
      {count: '7000', date: '2023-01-05', user_id: 1,},
      {count: '15000', date: '2023-01-06', user_id: 1,},
      {count: '3000', date: '2023-01-07', user_id: 1,},
      {count: '4000', date: '2023-01-08', user_id: 1,},
      {count: '2500', date: '2023-01-09', user_id: 1,},
      {count: '8000', date: '2023-01-10', user_id: 1,}
    ]
  )
  
  PostTag.create!(
    [
      {post_id: 1, tag_id: 1}
      ])