class WelcomeController < ApplicationController
  def homepage
      set_meta_tags title: 'Homepage', 
                    site: 'Madersec - Venta de madera seca',
                    description: 'Empresa dedicada a la comercialización de madera seca en cámara. Utilizamos madera proveniente de bosques de la costa y el oriente ecuatoriano.',
                    keywords: %w[madera seca tablones vigas seike quito ecuador],
                    og:{
                      title: 'Madersec, calidad en madera',
                      description: 'Empresa dedicada a la comercialización de madera seca en cámara. Utilizamos madera proveniente de bosques de la costa y el oriente ecuatoriano.',
                      type: 'website',
                      image: 'slider1'
                    }	
  end
  def about
      set_meta_tags title: 'About', site: 'Madersec',
                    description: 'Historia de Madersec',
                    keywords: %w[historia madersec tablones vigas ecuador],
                    og:{
                      title: 'Madersec, calidad en madera',
                      description: 'Historia de Madersec',
                      type: 'website',
                      image: 'slider1'
                    }  
  end
  def products
      set_meta_tags title: 'Products', site: 'Madersec',
                    description: 'Ofrecemos productos tales como tablones, durmientes, pérgolas, en seike, colorado, laurel.',
                    keywords: %w[productos madera tablones seike quito ecuador],
                    og:{
                      title: 'Madersec, calidad en madera',
                      description: 'Ofrecemos productos tales como tablones, durmientes, pérgolas, en seike, colorado, laurel.',
                      type: 'website',
                      image: 'slider1'
                    }  	
  end
  def contact
    @contact = Contact.new
    set_meta_tags title: 'Contact', site: 'Madersec',
                    description: 'Contáctanos.',
                    keywords: %w[contacto madersec tablones seike],
                    og:{
                      title: 'Madersec, calidad en madera',
                      description: 'Contáctanos.',
                      type: 'website',
                      image: 'slider1'
                    }  
  end
  def create
  set_meta_tags noindex: true
  set_meta_tags noindex: 'googlebot'

    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end

end
