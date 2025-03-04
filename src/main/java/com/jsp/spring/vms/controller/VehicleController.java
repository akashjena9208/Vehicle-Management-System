package com.jsp.spring.vms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.spring.vms.entity.Vehicle;
import com.jsp.spring.vms.service.VehicleService;

@Controller
public class VehicleController {
	@Autowired
	private VehicleService vehicleService;
	
	@RequestMapping(value = "/add-vehicle", method = RequestMethod.POST)
	public ModelAndView addVehicle(Vehicle vehicle) {
		return vehicleService.addVehicle(vehicle);
	}
	
	@RequestMapping(value = "/display-all-vehicle",method = RequestMethod.GET)
	public ModelAndView displayAllVehicle() {
		return vehicleService.displayAllVehicle();
	}
	
	@RequestMapping(value = "/find-vehicle-by-id" , method = RequestMethod.GET)
	public ModelAndView findVehicleById(int vehicleId) {
		return vehicleService.findVehicleById(vehicleId);
	}
	
	@RequestMapping(value = "/update-vehicle-by-id" , method = RequestMethod.POST)
	public ModelAndView updateVehicleById(Vehicle vehicle) {
		return vehicleService.updateVehicleById(vehicle);
	}
	
	@RequestMapping(value = "/delete-vehicle-by-id" , method = RequestMethod.GET)
	public ModelAndView deleteVehicleById(int vehicleId) {
		return vehicleService.deleteVehicleById(vehicleId);
	}
	
}