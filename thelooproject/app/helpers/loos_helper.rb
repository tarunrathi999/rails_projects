module LoosHelper
  def display_loo_type(loo_type)
    loo_type =  "Western & Indian" if loo_type == "both"
    loo_type
  end
  
  def display_gender_type(gender_type)
    gender_type =  "Gents & Ladies" if gender_type == "all"
    gender_type
  end
end
