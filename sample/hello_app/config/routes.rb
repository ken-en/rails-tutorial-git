Rails.application.routes.draw do
 root 'toppages#index'
 get "hello" => "hello#view" #追加
end


