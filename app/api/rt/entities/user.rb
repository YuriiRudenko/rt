module Rt
  module Entities::User
    class Base < Grape::Entity
      expose :id
      expose :email
      expose :first_name
      expose :last_name
    end
  end
end
