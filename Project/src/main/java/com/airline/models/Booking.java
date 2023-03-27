package com.airline.models;

public class Booking {
	private int id;
	private String name;
	private String number;
	private String date;
	private String no_of_persons;
	private String source;
	private String destination;
	private String price;
	public Booking(int id, String name, String number, String date, String no_of_persons, String source,
			String destination, String price) {
		super();
		this.id = id;
		this.name = name;
		this.number = number;
		this.date = date;
		this.no_of_persons = no_of_persons;
		this.source = source;
		this.destination = destination;
		this.price = price;
	}
	public Booking(String name, String number, String date, String no_of_persons, String source, String destination,
			String price) {
		super();
		this.name = name;
		this.number = number;
		this.date = date;
		this.no_of_persons = no_of_persons;
		this.source = source;
		this.destination = destination;
		this.price = price;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getNo_of_persons() {
		return no_of_persons;
	}
	public void setNo_of_persons(String no_of_persons) {
		this.no_of_persons = no_of_persons;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	
		
}
