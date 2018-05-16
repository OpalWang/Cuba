class Feedbacks < Cuba
	settings[:layout] = "feedback/layout"
       Cuba.plugin FeedbackHelpers

  define do
      on get do
                    #CALL /feedback/hello  
                    on terminal("hello") do
                      res.write "hello world"
                    end
                    #CALL /feedback/new
                     on "new" do
                      res.write view("/feedback/new")
                    end
                    #CALL /feedback/search?q=barbaz
                    on "search", param("q") do |query|  
                      res.write "Searched for #{query}" #=> "Searched for barbaz"
                    end
                    #CALL /feedback/list
                    on "list" do
                      @fbs=Feedback.all
                      res.write view("/feedback/list")
                      end
                    #CALL /feedback/id
                    on ":id" do |id|
                      fb = Feedback.find_by(id:id)
                      # /feedback/id/detail
                      on "detail" do
                        res.write "message: #{fb.message} "
                      end
                    end

       end
       on post do
                    on param("feedback") do |params|
                      begin
                              fb = Feedback.new(params)
                              fb.save
                              session[:success] = "You have successfully created one Feedback."
                              res.redirect "/feedback/list"
                      rescue => e
                              session[:error] = e.message
                              render("/feedback/new")
                      end
                              
          
                    end
       end
    

  end
  
end