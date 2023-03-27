package com.airline.models;
public class Flights {		
public Flights(String source, String destination) {
		super();
		this.source = source;
		this.destination = destination;
	}
	private int id;
	private String name;
	private String source;
	private String destination;
	public Flights(String name, String source, String destination, String price) {
		super();
		this.name = name;
		this.source = source;
		this.destination = destination;
		this.price = price;
	}
	public Flights(int id, String name, String source, String destination, String price) {
		super();
		this.id = id;
		this.name = name;
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
	private String price;
//	
//	public Flights(String firstName, String lastName, String email) {
//		super();
//		this.setFirstName(firstName);
//		this.setLastName(lastName);
//		this.setEmail(email);
//	}
//	
//	public Flights(int id, String firstName, String lastName, String email) {
//		super();
//		this.setId(id);
//		this.setFirstName(firstName);
//		this.setLastName(lastName);
//		this.setEmail(email);
//	}

	
	
}
//public class Flights {
//		
//		private int id;
//		private String Name;
//		private String Source;
//		private String Destination;
//		private String Price;
//		public int getId() {
//			return id;
//		}
//		public void setId(int id) {
//			this.id = id;
//		}
//		public Flights(int id, String Name, String Source, String Destination, String Price) {
//			super();
//			this.id = id;
//			this.Name = Name;
//			this.Source = Source;
//			this.Destination = Destination;
//			this.Price = Price;
//		}
//		public String getName() {
//			return Name;
//		}
//		public Flights(String Name, String Source, String Destination, String Price) {
//			super();
//			this.Name = Name;
//			this.Source = Source;
//			this.Destination = Destination;
//			this.Price = Price;
//		}
//		public void setName(String name) {
//			this.Name = name;
//		}
//		public String getSource() {
//			return Source;
//		}
//		public void setSource(String source) {
//			this.Source = source;
//		}
//		public String getDestination() {
//			return Destination;
//		}
//		public void setDestination(String destination) {
//			this.Destination = destination;
//		}
//		public String getPrice() {
//			return Price;
//		}
//		public void setPrice(String price) {
//			this.Price = price;
//		}
//
//		
//	
//
//}
