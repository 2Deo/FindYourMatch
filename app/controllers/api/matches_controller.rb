class Api::MatchesController < Api::BaseController

  def index
    render status: 200, json: {
      matches: Match.all
    }.to_json
  end

  def createMatch
    match = @admin.matches.build(match_params)

    if match.save
      render status: 201, json: match
    else
      render status: 422, json: {
        errors: match.errors
      }.to_json
    end
  end
end
