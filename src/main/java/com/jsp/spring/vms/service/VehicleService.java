package com.jsp.spring.vms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.spring.vms.entity.Vehicle;
import com.jsp.spring.vms.repository.VehicleRepository;

@Service
public class VehicleService {

	@Autowired
	private VehicleRepository vehicleRepository;

	public ModelAndView addVehicle(Vehicle vehicle) {

		//Resolve the request
		vehicleRepository.addVehicle(vehicle);
		
		//Generating response to redirect to index.jsp
		ModelAndView mav = new ModelAndView("index.jsp");
		return mav;
	}

	public ModelAndView displayAllVehicle() {
		
		List<Vehicle> vehicles = vehicleRepository.findAllVehicles();

		// generate a response
		ModelAndView mav = new ModelAndView("displayAllVehicles.jsp");
		mav.addObject("vehicles",vehicles);
		return mav;
	}

	public ModelAndView findVehicleById(int vehicleId) {
		
		Vehicle vehicle = vehicleRepository.findVehicleById(vehicleId);
		ModelAndView mav = new ModelAndView("updateVehicleById.jsp");
		mav.addObject("vehicle",vehicle);
		return mav;
	}
	
	public ModelAndView updateVehicleById(Vehicle vehicle) {
		
		vehicleRepository.updateVehicle(vehicle);
		
		// generate a response
		ModelAndView mav = new ModelAndView("redirect:display-all-vehicle");
		return mav;
	}

	public ModelAndView deleteVehicleById(int vehicleId) {
		
		vehicleRepository.deleteVehicleById(vehicleId);
		
		// generate a response
		ModelAndView mav = new ModelAndView("redirect:display-all-vehicle");
		return mav;
	}

}
