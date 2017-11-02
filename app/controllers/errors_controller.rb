module EmailCollector
  class ErrorsController
    def self.not_found
      [404, { 'Content-Type' => 'text/plain' }, ['Not found']]
    end
  end
  endclass ErrorsController < ApplicationController
end
