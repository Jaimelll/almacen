class VariablesController < ApplicationController
  def form
$vempresa=params[ :empresa_id]
$vorigen=params[ :origen_de]
#$vmes=params[ :mes_de]

# $vmes=Date.civil( params[:mes_de][:year].to_i, params[:mes_de][:month].to_i, params[:mes_de][:day].to_i )
   unless params[:mes_de].nil?
 $vmes=Date.civil( params[:mes_de][:year].to_i, params[:mes_de][:month].to_i, params[:mes_de][:day].to_i )
   end
  end
end
