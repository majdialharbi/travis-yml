# frozen_string_literal: true

module Travis
  module Yml
    module Schema
      module Def
        class Smalltalk < Type::Lang
          register :smalltalk

          def define
            title 'Smalltalk'
            summary 'Smalltalk language support'
            see 'Building a Smalltalk Project': 'https://docs.travis-ci.com/user/languages/smalltalk/'

            matrix :smalltalk
            matrix :smalltalk_config, to: :seq
            matrix :smalltalk_vm,     to: :seq

            map :smalltalk_edge, to: Class.new(Type::Map) {
              def define
                map :source, to: :str
                map :branch, to: :str
              end
            }
          end
        end
      end
    end
  end
end
