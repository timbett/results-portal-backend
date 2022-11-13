class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'
      get '/students' do
        students=Student.all
        students.to_json
      end
    #   post '/results' do
    #     results=Result.create(
    #       : params[:body],
    #       username:params[:username]
    #     )
    #     message.to_json
    #   end
      patch '/students/:id' do 
        student=Student.find(params[:id])
         student.update(
          marks: params[:marks]
        )
        message.to_json
      end
      delete '/students/:id' do 
        students=Message.find(params[:id])
        students.destroy
        students.to_json
      end
      post '/remarks' do
        remark=Remark.create(
          name:params[:name],
          remarks:params[:remarks],
          date:params[:date]
        )
        remark.to_json
      end
      get '/remarks' do
        remark=Remark.all
        remark.to_json
      end
      delete '/remarks/:id' do
        remark=Remark.find(params[:id])
        remark.destroy
        remark.to_json
      end
  end
  