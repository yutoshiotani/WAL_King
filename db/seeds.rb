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
    {name: "情報提供"},
    {name: "運動記録"}, 
    {name: "ウォーキング"},
    {name: "ランニング"},
    {name: "サイクリング"},
    {name: "食事"}
  ])
  
  User.create!(
  [
    {email: 'a@a', name: 'ユーザー1', password: '123456', body: 'よろしくお願いします', age: '30' , gender: 1 ,
    height: '170', weight: '80', problem: '肥満', status: 'disclosure', job_id: '1',
    profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/men_run.jpg"), filename: "men_run.jpg")},
     {email: 'b@b', name: 'ユーザー2', password: '123456', body: 'よろしくお願いします', age: '25' , gender: 1 ,
    height: '175', weight: '60', problem: 'DM(type1)', status: 'disclosure', job_id: '1',
    profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/men_golf.jpg"), filename: "men_golf.jpg")},
     {email: 'c@c', name: 'ユーザー3', password: '123456', body: 'よろしくお願いします', age: '35' , gender: 1 ,
    height: '170', weight: '80', problem: '高血圧', status: 'secret', job_id: '1',
    profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/men_run2.jpg"), filename: "men_run2.jpg")},
     {email: 'd@d', name: 'ユーザー4', password: '123456', body: 'よろしくお願いします', age: '45' , gender: 1 ,
    height: '170', weight: '80', problem: '高脂血症', status: 'secret', job_id: '1',
    profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/men_walk.jpg"), filename: "men_walk.jpg")},
     {email: 'e@e', name: 'ユーザー5', password: '123456', body: 'よろしくお願いします', age: '40' , gender: 2 ,
    height: '158', weight: '70', problem: '肥満', status: 'secret', job_id: '1',
    profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/women_sitting.jpg"), filename: "women_sitting.jpg")},
     {email: 'f@f', name: 'ユーザー6', password: '123456', body: 'よろしくお願いします', age: '30' , gender: 2 ,
    height: '160', weight: '55', problem: 'なし', status: 'disclosure', job_id: '1',
    profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/women_run.jpg"), filename: "women_run.jpg")},
     {email: 'g@g', name: 'サンプルRd.1', password: '123456', body: 'よろしくお願いします', age: '35' , gender: 1 ,
    height: '170', weight: '65', problem: '情報提供', status: 'disclosure', job_id: '4',
    profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/men.jpg"), filename: "men.jpg")},
     {email: 'h@h', name: 'サンプルNs.1', password: '123456', body: 'よろしくお願いします', age: '30' , gender: 1 ,
    height: '155', weight: '50', problem: '相談', status: 'disclosure', job_id: '2',
    profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/women_profile.jpg"), filename: "women_profile.jpg")},
     {email: 'j@j', name: 'サンプルDr.1', password: '123456', body: 'よろしくお願いします', age: '50' , gender: 1 ,
    height: '180', weight: '66', problem: '情報提供', status: 'disclosure', job_id: '1',
    profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/men_profile.jpg"), filename: "men_profile.jpg")},
  ]
)
  
  Target.create!(
    [
      {limit: '2022-11-30', body: '週１で運動する', weight: '81', daily_step: '6000', status: 'success', user_id: 1},
      {limit: '2022-12-31', body: '週2で運動する', weight: '78', daily_step: '8000', status: 'failed', user_id: 1},
      {limit: '2023-1-31', body: '週2で運動する', weight: '78', daily_step: '8000', status: 'process', user_id: 1},
      ])
      
      
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
  
  
      
  Post.create!(
  [
    {title: 'テスト投稿1', body: '投稿のテスト用', count: '5000', user_id: 1, status: 'disclosure', post_tag_id: 1,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/outside1.jpg"), filename: "outside1.jpg")},
    {title: 'テスト投稿2', body: '２件目の投稿', count: '4000', user_id: 1, status: 'disclosure', post_tag_id: 2,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/outside2.jpg"), filename: "outside2.jpg")},
    {title: '非公開投稿1', body: '投稿のテスト用1。この投稿は非公開になっていればOK', count: '6000', user_id: 1, status: 'secret', post_tag_id: 3,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/outside3.jpg"), filename: "outside3.jpg")},
    {title: '非公開投稿2', body: '投稿のテスト用2。この投稿は非公開になっていればOK', count: '7000', user_id: 1, status: 'secret', post_tag_id: 4,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/outside4.jpg"), filename: "outside4.jpg")},
    {title: 'test投稿3', body: 'Posting test. Please comment and favorite.', count: '8000', user_id: 2, status: 'disclosure', post_tag_id: 5,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/outside5.jpg"), filename: "outside5.jpg")},
    {title: 'secret投稿3', body: 'This post is secret.', count: '3000', user_id: 2, status: 'secret', post_tag_id: 6,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/outside6.jpg"), filename: "outside6.jpg")},
    {title: 'テスト投稿1', body: '誰かの非公開投稿', count: '45000', user_id: 3, status: 'secret', post_tag_id: 7,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/outside7.jpg"), filename: "outside7.jpg")},
    {title: 'テスト投稿1', body: '投稿機能の確認１１', count: '3500', user_id: 4, status: 'disclosure', post_tag_id: 8,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/outside8.jpg"), filename: "outside8.jpg")},
    {title: 'テスト投稿1', body: '投稿機能の確認２２', count: '8000', user_id: 4, status: 'disclosure', post_tag_id: 9,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/outside9.jpg"), filename: "outside9.jpg")},
    {title: 'テスト投稿1', body: '投稿機能の確認３３', count: '10000', user_id: 4, status: 'disclosure', post_tag_id: 10,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/outside10.jpg"), filename: "outside10.jpg")},
    {title: 'テスト投稿1', body: '歩きました。良い運動になりました。', count: '10000', user_id: 1, status: 'disclosure', post_tag_id: 11,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/outside11.jpg"), filename: "outside11.jpg")},
    {title: 'テスト投稿1', body: '走りました。疲れました。', count: '10000', user_id: 1, status: 'disclosure', post_tag_id: 12,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/outside12.jpg"), filename: "outside12.jpg")},
    {title: '運動に関する情報提供', body: 'テスト投稿。適度な運動を。', count: '0', user_id: 9, status: 'disclosure', post_tag_id: 13,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/training2.jpg"), filename: "training2.jpg")},
    {title: '食事について', body: 'テスト投稿。旬の作物を食べましょう。', count: '0', user_id: 7, status: 'disclosure', post_tag_id: 14,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/food2.jpg"), filename: "food2.jpg")},
  ]
)

  PostTag.create!(
    [
      {post_id: 1, tag_id: 2},
      {post_id: 2, tag_id: 2},
      {post_id: 3, tag_id: 2},
      {post_id: 4, tag_id: 2},
      {post_id: 5, tag_id: 2},
      {post_id: 6, tag_id: 2},
      {post_id: 7, tag_id: 2},
      {post_id: 8, tag_id: 2},
      {post_id: 9, tag_id: 2},
      {post_id: 10, tag_id: 2},
      {post_id: 11, tag_id: 3},
      {post_id: 12, tag_id: 4},
      {post_id: 13, tag_id: 1},
      {post_id: 14, tag_id: 6},
      ])
  
  