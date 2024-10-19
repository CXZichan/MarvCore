class PagesController < ApplicationController
  def home
    @cpu_usage = `mpstat | grep 'all' | awk '{print 100 - $13}'`
    @disk_usage = `df -h / | awk 'NR==2 {print $3 " used out of " $2}'`
    @temperature = `sensors | grep 'Core 0' | awk '{print $3}'`
    @mc_server_status = `docker inspect -f '{{.State.Status}}' mc-server`.strip
    @cs2_server_status = `docker inspect -f '{{.State.Status}}' cs2-server`.strip

  end

  def start_server
    system('make start')
    redirect_to root_path
  end

  def stop_server
    system('make stop')
    redirect_to root_path
  end

  def restart_server
    system('make restart')
    redirect_to root_path
  end

  def start_mc
    system('docker start mc-server')
    redirect_to root_path
  end
  
  def stop_mc
    system('docker stop mc-server')
    redirect_to root_path
  end
  
  def restart_mc
    system('docker restart mc-server')
    redirect_to root_path
  end
  
  def start_cs2
    system('docker start cs2-server')
    redirect_to root_path
  end
  
  def stop_cs2
    system('docker stop cs2-server')
    redirect_to root_path
  end
  
  def restart_cs2
    system('docker restart cs2-server')
    redirect_to root_path
  end  
end
