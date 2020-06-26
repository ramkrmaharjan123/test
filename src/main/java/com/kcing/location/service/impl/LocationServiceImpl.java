package com.kcing.location.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.kcing.location.entities.Location;
import com.kcing.location.service.interfaces.LocationService;

@Service
public class LocationServiceImpl implements LocationService {
	

	@Override
	public Location saveLocation(Location location) {
		return null;
	}

	@Override
	public Location updateLocation(Location location) {
		return null;
	}

	@Override
	public void deleteLocation(Location location) {
		
	}

	@Override
	public Location findLocation(Long id) {
//		 return locationRepository.getOne(id);
		return null;
	}

	@Override
	public List<Location> findAllLocations() {
		return null;
	}



}
