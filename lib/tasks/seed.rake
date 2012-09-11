namespace :db do
  task :seed do

    Brand.create(fb_user: 'cachila',
                 brand: "Cachila",
                 description: "Articulos para el hogar y boludeces",
                 tags: "lamparas, almohadones, cuadros, arte")
  end

end
