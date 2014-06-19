module Neighborly::Api
  module V1
    class ProjectsController < Neighborly::Api::BaseController
      respond_to :json

      def index
        online_projects = Project.with_state('online')
        render json: online_projects
      end
    end
  end
end