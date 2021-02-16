profile = { name: "kk", age: 18 }
#有提供 keys 跟 values 兩個方法
p profile.keys

p profile.values

profile = { name: "kk", age: 18 }

# p profile[name] 
p profile[:name]

#字串可以改變，符號不行
name = "dedjiewjdiewjdi"

name[2] = "a"

p name

name = :dedjiewjdiewjdi
name[2] = "a"
p name

#字串印五次，每次使用的記憶體位置都不一樣，每次都是新申請一個位置
p "hi".object_id
p "hi".object_id
p "hi".object_id
p "hi".object_id
p "hi".object_id


#符號印五次，每次位置都一樣
p :hi.object_id
p :hi.object_id
p :hi.object_id
p :hi.object_id
p :hi.object_id

#冷凍字串
p "hi".freeze.object_id
p "hi".freeze.object_id
p "hi".freeze.object_id

#字串轉符號
p "name".to_sym
p "name".intern

#符號轉字串
p :name.to_s
p :key.id2name
