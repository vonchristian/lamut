class BusinessTax < ApplicationRecord

  def manufacturers_assemblers_repackers_processors_brewers_distillers_rectifiers_and_compounders_of_liquors_distilled_spirits_and_wines_or_manufacturers_of_any_article_of_commerce_of_whatever_kind_in_nature_in_excess_of_6_500_000(gross_sale)
    tax = ((gross_sale.amount * 0.01) * 0.3750)
  end
end
