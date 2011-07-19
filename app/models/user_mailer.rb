class UserMailer < ActionMailer::Base  
def email(comment)
  recipients comment.post.user.email
  from comment.name
  subject "Comment for your post"
  sent_on Time.now
  body :comment => comment
end
end
