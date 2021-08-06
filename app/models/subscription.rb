class Subscription < ApplicationRecord

  EMAIL_FORMAT = /\A(?!.*\.\.)[a-z\d_.\-+]{1,50}@[a-z\d\-]{1,50}\.[a-z]{1,30}\z/i

end
