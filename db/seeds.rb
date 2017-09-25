# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
seed_file = Rails.root.join('db', 'seeds', 'departments.yml')
config = YAML::load_file(seed_file)
records = config['departments']['records']
records.each{ 
    |d|  Department.create!(departmentName: d[1])
}

seed_file = Rails.root.join('db', 'seeds', 'positions.yml')
config = YAML::load_file(seed_file)
records = config['positions']['records']
records.each{ 
    |d|  Position.create!(title: d[1])
}

seed_file = Rails.root.join('db', 'seeds', 'statuses.yml')
config = YAML::load_file(seed_file)
records = config['statuses']['records']
records.each{ 
    |d|  Status.create!(title: d[1], department_id: d[2])
}

seed_file = Rails.root.join('db', 'seeds', 'tags.yml')
config = YAML::load_file(seed_file)
if config then
    records = config['tags']['records']
    records.each do |r| 
        new_tag = Hash.new 
        new_tag['tagName'] = r[1]
        new_tag['department_id'] = r[2]
        Tag.create!(new_atg)
    end
end

seed_file = Rails.root.join('db', 'seeds', 'users.yml')
config = YAML::load_file(seed_file)
records = config['users']['records']
if config then
    records.each do |r|
        new_user = Hash.new 
        new_user['email'] = r[1]
        new_user['password'] = r[9]
        new_user['username'] = r[3]
        new_user['department_id'] = r[4]
        new_user['isGeneralAdmin'] = r[5]
        new_user['isDepartmentAdmin'] = r[6]
        new_user['created_at'] = r[7]
        new_user['updated_at'] = r[8]
        new_user['encrypted_password'] = r[9]
        new_user['reset_password_token'] = r[10]
        new_user['reset_password_sent_at'] = r[11]
        new_user['remember_created_at'] = r[12]
        new_user['sign_in_count'] = r[13]
        new_user['current_sign_in_at'] = r[14]
        new_user['last_sign_in_at'] = r[15]
        new_user['current_sign_in_ip'] = r[16]
        new_user['last_sign_in_ip'] = r[17]
        new_user['position_id'] = r[18]
        User.create!(new_user)
    end
end

# seed_file = Rails.root.join('db', 'seeds', 'documents.yml')
# config = YAML::load_file(seed_file)
# Document.create!(config)

# seed_file = Rails.root.join('db', 'seeds', 'documents_tags.yml')
# config = YAML::load_file(seed_file)
# Document_Tag.create!(config)
