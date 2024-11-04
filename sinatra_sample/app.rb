require "sinatra"

get '/' do
    @posts =[]
    File.open("data.txt", "r") do |f| # --1
        f.each_line do |line| # --2
            @posts << line # --3
        end
    end 
    erb :index
end

post '/create' do 
 point = params[:point].to_i
 comment = params[:comment]
 save_file(point: point, comment: comment)
 redirect '/' 
end

def save_file(point:, comment:)
    post = "ポイント: #{point} コメント: #{comment}" # --1
    File.open("data.txt", "a") do |f| # --2
        f.puts(post)
    end
end