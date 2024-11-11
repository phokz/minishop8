class OrderMailer < ApplicationMailer
  default_email = 'archiv@langhans.cz'

  def confirmation(order)
    @order = order
    mail to: order.email, subject: I18n.t(:order_confirmation_subject)
  end

end
