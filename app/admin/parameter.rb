ActiveAdmin.register Parameter do

  permit_params :empresa, :origen,:mes,
                :sele, :sele1, :sele2, :sele3

  member_action :compra, method: :put do
    @num=Parameter.where( id:1 ).
         select('origen as dd').first.dd

      Parameter.where( id:1 ).update_all( origen:1 )
        redirect_to admin_dashboard_path
    end


  member_action :venta, method: :put do
    @num=Parameter.where( id:1 ).
         select('origen as dd').first.dd

      Parameter.where( id:1 ).update_all( origen:2 )
        redirect_to admin_dashboard_path
    end


    member_action :darcod, method: :put do

         
      conta=Parameter.find_by_id(1).sele
       vite= Item.where(origen:Parameter.find_by_id(1).origen,
             mmes:Parameter.find_by_id(1).mes,
             empresa:Parameter.find_by_id(1).empresa ).
             order('pfecha ASC','serie','nfactu')
             
     

         if vite.count>0 then    
           vite.each do |item|
              vite.where(id:item.id).update_all(sele:conta)
              conta=conta+1
           end
           
           @num=vite.select('id as dd').first.dd
         end 
         redirect_to admin_items_path  
     end



menu priority: 6, label: "Parametros"
filter :mes

index :title => 'Parametros' do



    column("empresa")do |para|
               Formula.where(product_id:10,orden:para.empresa).
                select('descripcion as dd').first.dd
    end

    column("origen")do |para|
              Formula.where(product_id:11,orden:para.origen).
                select('descripcion as dd').first.dd
    end


    column("mes")
    column("Codigo Inicial", :sele)
        actions
    end

    form :title => 'Edicion Parte'  do |f|

        f.inputs  do



           f.input :empresa , :as => :select, :collection =>
               Formula.where(product_id:10).map{|u| [u.descripcion, u.orden]}
           f.input :origen, :as => :select, :collection =>
               Formula.where(product_id:11).map{|u| [u.descripcion, u.orden]}
            
            f.input :mes, as: :datepicker, :input_html => { :style =>  'width:30%'}
            f.input :sele, :label => 'Codigo inicial', :input_html => { :rows => 2,:style =>  'width:30%'}
            f.actions
        end
      end




      show :title => ' Parte'  do



              attributes_table do



                row :empresa do |para|
                           Formula.where(product_id:10,orden:para.empresa).
                            select('descripcion as dd').first.dd
                end
                row :origen do |para|
                          Formula.where(product_id:11,orden:para.origen).
                            select('descripcion as dd').first.dd
                end

                row :mes
                row :CodigoInical do |para|
                   para.sele
                end

                row 'modificado' do |clients|
                  clients.updated_at.to_s
                end


          end

      end








end
