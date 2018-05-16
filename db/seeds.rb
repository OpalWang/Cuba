# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
ParcelValuation.delete_all

(1..30).each do |weight|
ParcelValuation.create!({lgc_contract_num: "general",lgc_product: "general",origin_cntry: "de",term_cntry: "cn",currency:"EUR",
weight_of_charging: weight,maxi_total_length: 9999,price: 30+weight})

ParcelValuation.create!({lgc_contract_num: "general",lgc_product: "general",origin_cntry: "de",term_cntry: "cn",currency:"EUR",
weight_of_charging: weight,maxi_total_length: 10,price: 10+weight})

ParcelValuation.create!({lgc_contract_num: "general",lgc_product: "general",origin_cntry: "fr",term_cntry: "cn",currency:"EUR",
weight_of_charging: weight,maxi_total_length: 9999,price: 25+weight})

ParcelValuation.create!({lgc_contract_num: "general",lgc_product: "general",origin_cntry: "fr",term_cntry: "cn",currency:"EUR",
weight_of_charging: weight,maxi_total_length: 10,price: 9+weight})

ParcelValuation.create!({lgc_contract_num: "general",lgc_product: "general",origin_cntry: "nl",term_cntry: "cn",currency:"EUR",
weight_of_charging: weight,maxi_total_length: 9999,price: 20+weight})

ParcelValuation.create!({lgc_contract_num: "general",lgc_product: "general",origin_cntry: "nl",term_cntry: "cn",currency:"EUR",
weight_of_charging: weight,maxi_total_length: 10,price: 7+weight})

ParcelValuation.create!({lgc_contract_num: "general",lgc_product: "general",origin_cntry: "gb",term_cntry: "cn",currency:"EUR",
weight_of_charging: weight,maxi_total_length: 9999,price: 15+weight})

ParcelValuation.create!({lgc_contract_num: "general",lgc_product: "general",origin_cntry: "gb",term_cntry: "cn",currency:"EUR",
weight_of_charging: weight,maxi_total_length: 10,price: 5+weight})

ParcelValuation.create!({lgc_contract_num: "general",lgc_product: "general",origin_cntry: "at",term_cntry: "cn",currency:"EUR",
weight_of_charging: weight,maxi_total_length: 9999,price: 50+weight})

ParcelValuation.create!({lgc_contract_num: "general",lgc_product: "general",origin_cntry: "at",term_cntry: "cn",currency:"EUR",
weight_of_charging: weight,maxi_total_length: 10,price: 15+weight})

ParcelValuation.create!({lgc_contract_num: "general",lgc_product: "general",origin_cntry: "cn",term_cntry: "de",currency:"EUR",
weight_of_charging: weight,maxi_total_length: 10,price: 15+weight})

ParcelValuation.create!({lgc_contract_num: "general",lgc_product: "general",origin_cntry: "cn",term_cntry: "gb",currency:"EUR",
weight_of_charging: weight,maxi_total_length: 10,price: 15+weight})
end



(1..30).each do |weight|
ParcelValuation.create!({lgc_contract_num: "general",lgc_product: "general",origin_cntry: "cn",term_cntry: "es",currency:"EUR",
weight_of_charging: weight,maxi_total_length: 10,price: 15+weight})

ParcelValuation.create!({lgc_contract_num: "general",lgc_product: "general",origin_cntry: "cn",term_cntry: "nl",currency:"EUR",
weight_of_charging: weight,maxi_total_length: 10,price: 15+weight})

ParcelValuation.create!({lgc_contract_num: "general",lgc_product: "general",origin_cntry: "cn",term_cntry: "at",currency:"EUR",
weight_of_charging: weight,maxi_total_length: 10,price: 15+weight})

ParcelValuation.create!({lgc_contract_num: "general",lgc_product: "general",origin_cntry: "cn",term_cntry: "fr",currency:"EUR",
weight_of_charging: weight,maxi_total_length: 10,price: 15+weight})

ParcelValuation.create!({lgc_contract_num: "general",lgc_product: "general",origin_cntry: "cn",term_cntry: "pt",currency:"EUR",
weight_of_charging: weight,maxi_total_length: 10,price: 15+weight})

ParcelValuation.create!({lgc_contract_num: "general",lgc_product: "general",origin_cntry: "cn",term_cntry: "cz",currency:"EUR",
weight_of_charging: weight,maxi_total_length: 10,price: 15+weight})

ParcelValuation.create!({lgc_contract_num: "general",lgc_product: "general",origin_cntry: "cn",term_cntry: "it",currency:"EUR",
weight_of_charging: weight,maxi_total_length: 10,price: 15+weight})

ParcelValuation.create!({lgc_contract_num: "general",lgc_product: "general",origin_cntry: "cn",term_cntry: "ru",currency:"EUR",
weight_of_charging: weight,maxi_total_length: 10,price: 15+weight})

ParcelValuation.create!({lgc_contract_num: "general",lgc_product: "general",origin_cntry: "cn",term_cntry: "no",currency:"EUR",
weight_of_charging: weight,maxi_total_length: 10,price: 15+weight})

ParcelValuation.create!({lgc_contract_num: "general",lgc_product: "general",origin_cntry: "cn",term_cntry: "be",currency:"EUR",
weight_of_charging: weight,maxi_total_length: 10,price: 15+weight})

ParcelValuation.create!({lgc_contract_num: "general",lgc_product: "general",origin_cntry: "cn",term_cntry: "pl",currency:"EUR",
weight_of_charging: weight,maxi_total_length: 10,price: 15+weight})

ParcelValuation.create!({lgc_contract_num: "general",lgc_product: "general",origin_cntry: "cn",term_cntry: "lu",currency:"EUR",
weight_of_charging: weight,maxi_total_length: 10,price: 15+weight})

ParcelValuation.create!({lgc_contract_num: "general",lgc_product: "general",origin_cntry: "cn",term_cntry: "uk",currency:"EUR",
weight_of_charging: weight,maxi_total_length: 10,price: 15+weight})
end



(1..30).each do |weight|
ParcelValuation.create!({lgc_contract_num: "general",lgc_product: "general",origin_cntry: "cn",term_cntry: "us",currency:"EUR",
weight_of_charging: weight,maxi_total_length: 10,price: 15+weight})

ParcelValuation.create!({lgc_contract_num: "general",lgc_product: "general",origin_cntry: "cn",term_cntry: "dk",currency:"EUR",
weight_of_charging: weight,maxi_total_length: 10,price: 15+weight})

ParcelValuation.create!({lgc_contract_num: "general",lgc_product: "general",origin_cntry: "cn",term_cntry: "se",currency:"EUR",
weight_of_charging: weight,maxi_total_length: 10,price: 15+weight})

ParcelValuation.create!({lgc_contract_num: "general",lgc_product: "general",origin_cntry: "cn",term_cntry: "fi",currency:"EUR",
weight_of_charging: weight,maxi_total_length: 10,price: 15+weight})

ParcelValuation.create!({lgc_contract_num: "general",lgc_product: "general",origin_cntry: "cn",term_cntry: "ch",currency:"EUR",
weight_of_charging: weight,maxi_total_length: 10,price: 15+weight})

ParcelValuation.create!({lgc_contract_num: "general",lgc_product: "general",origin_cntry: "cn",term_cntry: "bg",currency:"EUR",
weight_of_charging: weight,maxi_total_length: 10,price: 15+weight})

ParcelValuation.create!({lgc_contract_num: "general",lgc_product: "general",origin_cntry: "cn",term_cntry: "ie",currency:"EUR",
weight_of_charging: weight,maxi_total_length: 10,price: 15+weight})

ParcelValuation.create!({lgc_contract_num: "general",lgc_product: "general",origin_cntry: "cn",term_cntry: "si",currency:"EUR",
weight_of_charging: weight,maxi_total_length: 10,price: 15+weight})

ParcelValuation.create!({lgc_contract_num: "general",lgc_product: "general",origin_cntry: "cn",term_cntry: "sk",currency:"EUR",
weight_of_charging: weight,maxi_total_length: 10,price: 15+weight})

ParcelValuation.create!({lgc_contract_num: "general",lgc_product: "general",origin_cntry: "cn",term_cntry: "be",currency:"EUR",
weight_of_charging: weight,maxi_total_length: 10,price: 15+weight})

ParcelValuation.create!({lgc_contract_num: "general",lgc_product: "general",origin_cntry: "cn",term_cntry: "tmp",currency:"EUR",
weight_of_charging: weight,maxi_total_length: 10,price: 15+weight})

ParcelValuation.create!({lgc_contract_num: "general",lgc_product: "general",origin_cntry: "cn",term_cntry: "lt",currency:"EUR",
weight_of_charging: weight,maxi_total_length: 10,price: 15+weight})

ParcelValuation.create!({lgc_contract_num: "general",lgc_product: "general",origin_cntry: "cn",term_cntry: "gr",currency:"EUR",
weight_of_charging: weight,maxi_total_length: 10,price: 15+weight})
end




ParcelTrackingInfo.all.each do |pti|
begin
pti.parcel_owner=Parcel.find_by(parcel_num: pti.parcel_num).parcel_owner
pti.save
p "update success #{pti.parcel_num}"
rescue=>e
p "update failure #{pti.parcel_num} , #{e.message}"
end
end


File.open("log/update_parcel_shpmt_product.log", "wb+") do |f|
Parcel.all.each do |p|
begin
if p.shpmt_product[0,7]=="EXPORT_"
regist=p.shpmt_product[12,4]
if regist=="YES" || regist=="NO"
old_shpmt_product=p.shpmt_product
p.shpmt_product=UtilsFunction.gen_shpmt_product(p.weight,p.rcpt_term_cntry.upcase,regist,"N")
p.save
f.puts "update success #{p.parcel_num} , #{old_shpmt_product} => #{p.shpmt_product}"
elsif regist=="CP01"
old_shpmt_product=p.shpmt_product
p.shpmt_product=UtilsFunction.gen_shpmt_product(p.weight,p.rcpt_term_cntry.upcase,"N","N")
p.save
f.puts "update success #{p.parcel_num} , #{old_shpmt_product} => #{p.shpmt_product}"
elsif regist=="CP02"
old_shpmt_product=p.shpmt_product
p.shpmt_product=UtilsFunction.gen_shpmt_product(p.weight,p.rcpt_term_cntry.upcase,"Y","N")
p.save
f.puts "update success #{p.parcel_num} , #{old_shpmt_product} => #{p.shpmt_product}"
else
f.puts "no need to update? #{p.parcel_num} , #{p.shpmt_product}"
end
else
f.puts "no Export Parcel #{p.parcel_num} , #{p.shpmt_product}"
end
rescue=>e
f.puts "update failure #{p.parcel_num} , #{e.message}"
end
end
end

ParcelValuation.create!({lgc_contract_num: "kidsroom",lgc_product: "general",origin_cntry: "de",term_cntry: "cn",currency:"EUR",
weight_of_charging: 1,maxi_total_length: -1,price: 0})
ParcelValuation.create!({lgc_contract_num: "kidsroom",lgc_product: "general",origin_cntry: "de",term_cntry: "cn",currency:"EUR",
weight_of_charging: 2,maxi_total_length: -1,price: 0})
ParcelValuation.create!({lgc_contract_num: "kidsroom",lgc_product: "general",origin_cntry: "de",term_cntry: "cn",currency:"EUR",
weight_of_charging: 3,maxi_total_length: -1,price: 0})
ParcelValuation.create!({lgc_contract_num: "kidsroom",lgc_product: "general",origin_cntry: "de",term_cntry: "cn",currency:"EUR",
weight_of_charging: 4,maxi_total_length: -1,price: 0})
ParcelValuation.create!({lgc_contract_num: "kidsroom",lgc_product: "general",origin_cntry: "de",term_cntry: "cn",currency:"EUR",
weight_of_charging: 5,maxi_total_length: -1,price: 0})
ParcelValuation.create!({lgc_contract_num: "kidsroom",lgc_product: "general",origin_cntry: "de",term_cntry: "cn",currency:"EUR",
weight_of_charging: 6,maxi_total_length: -1,price: 0})
ParcelValuation.create!({lgc_contract_num: "kidsroom",lgc_product: "general",origin_cntry: "de",term_cntry: "cn",currency:"EUR",
weight_of_charging: 7,maxi_total_length: -1,price: 0})
ParcelValuation.create!({lgc_contract_num: "kidsroom",lgc_product: "general",origin_cntry: "de",term_cntry: "cn",currency:"EUR",
weight_of_charging: 8,maxi_total_length: -1,price: 0})
ParcelValuation.create!({lgc_contract_num: "kidsroom",lgc_product: "general",origin_cntry: "de",term_cntry: "cn",currency:"EUR",
weight_of_charging: 9,maxi_total_length: -1,price: 0})
ParcelValuation.create!({lgc_contract_num: "kidsroom",lgc_product: "general",origin_cntry: "de",term_cntry: "cn",currency:"EUR",
weight_of_charging: 10,maxi_total_length: -1,price: 0})
ParcelValuation.create!({lgc_contract_num: "kidsroom",lgc_product: "general",origin_cntry: "de",term_cntry: "cn",currency:"EUR",
weight_of_charging: 11,maxi_total_length: -1,price: 0})
ParcelValuation.create!({lgc_contract_num: "kidsroom",lgc_product: "general",origin_cntry: "de",term_cntry: "cn",currency:"EUR",
weight_of_charging: 12,maxi_total_length: -1,price: 35})
ParcelValuation.create!({lgc_contract_num: "kidsroom",lgc_product: "general",origin_cntry: "de",term_cntry: "cn",currency:"EUR",
weight_of_charging: 13,maxi_total_length: -1,price: 38})
ParcelValuation.create!({lgc_contract_num: "kidsroom",lgc_product: "general",origin_cntry: "de",term_cntry: "cn",currency:"EUR",
weight_of_charging: 14,maxi_total_length: -1,price: 0})
ParcelValuation.create!({lgc_contract_num: "kidsroom",lgc_product: "general",origin_cntry: "de",term_cntry: "cn",currency:"EUR",
weight_of_charging: 15,maxi_total_length: -1,price: 43})
ParcelValuation.create!({lgc_contract_num: "kidsroom",lgc_product: "general",origin_cntry: "de",term_cntry: "cn",currency:"EUR",
weight_of_charging: 16,maxi_total_length: -1,price: 45})
ParcelValuation.create!({lgc_contract_num: "kidsroom",lgc_product: "general",origin_cntry: "de",term_cntry: "cn",currency:"EUR",
weight_of_charging: 17,maxi_total_length: -1,price: 47})
ParcelValuation.create!({lgc_contract_num: "kidsroom",lgc_product: "general",origin_cntry: "de",term_cntry: "cn",currency:"EUR",
weight_of_charging: 18,maxi_total_length: -1,price: 0})
ParcelValuation.create!({lgc_contract_num: "kidsroom",lgc_product: "general",origin_cntry: "de",term_cntry: "cn",currency:"EUR",
weight_of_charging: 19,maxi_total_length: -1,price: 51})
ParcelValuation.create!({lgc_contract_num: "kidsroom",lgc_product: "general",origin_cntry: "de",term_cntry: "cn",currency:"EUR",
weight_of_charging: 20,maxi_total_length: -1,price: 53})
ParcelValuation.create!({lgc_contract_num: "kidsroom",lgc_product: "general",origin_cntry: "de",term_cntry: "cn",currency:"EUR",
weight_of_charging: 21,maxi_total_length: -1,price: 55})
ParcelValuation.create!({lgc_contract_num: "kidsroom",lgc_product: "general",origin_cntry: "de",term_cntry: "cn",currency:"EUR",
weight_of_charging: 22,maxi_total_length: -1,price: 57})
ParcelValuation.create!({lgc_contract_num: "kidsroom",lgc_product: "general",origin_cntry: "de",term_cntry: "cn",currency:"EUR",
weight_of_charging: 23,maxi_total_length: -1,price: 59})
ParcelValuation.create!({lgc_contract_num: "kidsroom",lgc_product: "general",origin_cntry: "de",term_cntry: "cn",currency:"EUR",
weight_of_charging: 24,maxi_total_length: -1,price: 61})
ParcelValuation.create!({lgc_contract_num: "kidsroom",lgc_product: "general",origin_cntry: "de",term_cntry: "cn",currency:"EUR",
weight_of_charging: 25,maxi_total_length: -1,price: 63})
ParcelValuation.create!({lgc_contract_num: "kidsroom",lgc_product: "general",origin_cntry: "de",term_cntry: "cn",currency:"EUR",
weight_of_charging: 26,maxi_total_length: -1,price: 0})
ParcelValuation.create!({lgc_contract_num: "kidsroom",lgc_product: "general",origin_cntry: "de",term_cntry: "cn",currency:"EUR",
weight_of_charging: 27,maxi_total_length: -1,price: 0})
ParcelValuation.create!({lgc_contract_num: "kidsroom",lgc_product: "general",origin_cntry: "de",term_cntry: "cn",currency:"EUR",
weight_of_charging: 28,maxi_total_length: -1,price: 69})
ParcelValuation.create!({lgc_contract_num: "kidsroom",lgc_product: "general",origin_cntry: "de",term_cntry: "cn",currency:"EUR",
weight_of_charging: 29,maxi_total_length: -1,price: 0})
ParcelValuation.create!({lgc_contract_num: "kidsroom",lgc_product: "general",origin_cntry: "de",term_cntry: "cn",currency:"EUR",
weight_of_charging: 30,maxi_total_length: -1,price: 0})

# (lgc_contract_num,term_cntry,regist_unit_price,regist_fee,operate_unit_price,operate_fee,first_price,other_unit_price)
ParcelValuation.init_yhgj_price_list("ETCN01001DEFAULT","de",10,2,8,1.5,20,10)


ParcelShipment.where(status: "intialized").update_all(status: "initialized")


(1..5).each do |weight|
ParcelValuation.create!({lgc_contract_num: "quaie_milk",lgc_product: "general",origin_cntry: "de",term_cntry: "cn",currency:"RMB",
weight_of_charging: weight,maxi_total_length: -1,price: 280})
end

User.all.each do |user|
if user.isSto? || user.isMY? || user.isQB? || user.isYHGJ?
UserConf.save_by_value!(user,"01","01","Y")
end
end


FbaDepotInfo.where(ts_type: nil).update_all(ts_type: "空运")

UserConf.save_by_value!(-1,"01","02","Y")
User.where(email: ["1735248079@qq.com","68249933@qq.com","51131354@qq.com"]).each do |u|
    UserConf.save_by_value!(u,"01","02","Y")
end

UserConf.save_by_value!(-1,"02","01","Y","MXP5")
UserConf.save_by_value!(-1,"02","01","Y","MAD4")
UserConf.save_by_value!(-1,"02","02","自运卡班","MXP5")
UserConf.save_by_value!(-1,"02","02","自运卡班","MAD4")
UserConf.save_by_value!(-1,"02","03","DHL","de")
UserConf.save_by_value!(-1,"02","03","DHL","es")
UserConf.save_by_value!(-1,"02","03","DPD","at")
UserConf.save_by_value!(-1,"02","03","DPD","be")
UserConf.save_by_value!(-1,"02","03","DPD","gb")
UserConf.save_by_value!(-1,"02","03","DPD","fr")
UserConf.save_by_value!(-1,"02","03","DPD","hu")
UserConf.save_by_value!(-1,"02","03","DPD","it")
UserConf.save_by_value!(-1,"02","03","DPD","lt")
UserConf.save_by_value!(-1,"02","03","DPD","pl")
UserConf.save_by_value!(-1,"02","03","DPD","si")
UserConf.save_by_value!(-1,"02","03","DPD","ch")
UserConf.save_by_value!(-1,"02","03","DPD","nl")
UserConf.save_by_value!(-1,"02","03","DPD","lu")
UserConf.save_by_value!(-1,"02","03","DPD","pt")
UserConf.save_by_value!(-1,"02","03","DPD","sk")
UserConf.save_by_value!(-1,"02","03","DPD","se")
UserConf.save_by_value!(-1,"02","03","DPD","dk")


#fba清关发票导出汇率转换
Currency.create(currency_name: "英镑", currency_price: 1.33,to_currency_name: "美元")
Currency.create(currency_name: "欧元", currency_price: 1.21,to_currency_name: "美元")


# 国家对应物流线路调整 - 2017.10.12
UserConf.where(conf_type: "02",conf_subtype: "03",user_id: -1).delete_all

UserConf.save_by_value!(-1,"02","03","DHL","de")
UserConf.save_by_value!(-1,"02","03","DHL","es")
UserConf.save_by_value!(-1,"02","03","DHL","it")


UserConf.save_by_value!(-1,"02","03","DPD","gb")
UserConf.save_by_value!(-1,"02","03","DPD","fr")
UserConf.save_by_value!(-1,"02","03","DPD","pl")
UserConf.save_by_value!(-1,"02","03","DPD","at")
UserConf.save_by_value!(-1,"02","03","DPD","be")
UserConf.save_by_value!(-1,"02","03","DPD","ie")
UserConf.save_by_value!(-1,"02","03","DPD","hr")
UserConf.save_by_value!(-1,"02","03","DPD","bg")
UserConf.save_by_value!(-1,"02","03","DPD","cz")
UserConf.save_by_value!(-1,"02","03","DPD","hu")
UserConf.save_by_value!(-1,"02","03","DPD","lt")
UserConf.save_by_value!(-1,"02","03","DPD","si")
UserConf.save_by_value!(-1,"02","03","DPD","ee")
UserConf.save_by_value!(-1,"02","03","DPD","nl")
UserConf.save_by_value!(-1,"02","03","DPD","lu")
UserConf.save_by_value!(-1,"02","03","DPD","pt")
UserConf.save_by_value!(-1,"02","03","DPD","lv")
UserConf.save_by_value!(-1,"02","03","DPD","sk")
UserConf.save_by_value!(-1,"02","03","DPD","fi")
UserConf.save_by_value!(-1,"02","03","DPD","gr")
UserConf.save_by_value!(-1,"02","03","DPD","no")
UserConf.save_by_value!(-1,"02","03","DPD","ro")
UserConf.save_by_value!(-1,"02","03","DPD","se")
UserConf.save_by_value!(-1,"02","03","DPD","dk")
UserConf.save_by_value!(-1,"02","03","DPD","ba")
UserConf.save_by_value!(-1,"02","03","DPD","rs")