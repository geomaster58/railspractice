User.create!(email: "test@test.com", password: "123456", password_confirmation: "123456", roles: "user")

puts "1 user created"

User.create!(email: "test@admin.com", password: "123456", password_confirmation: "123456", roles: "admin")

puts "1 admin created"


User.create!(email: "test@test1.com", password: "123456", password_confirmation: "123456", roles: "user")

puts "1 bloguser created"


100.times do |x|
  Blog.create!( title: "Title #{x}", body: "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.", date: Date.today, user_id: User.last.id)
end

puts "100 blogs created"

