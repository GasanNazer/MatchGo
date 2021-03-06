package es.ucm.fdi.iw.model;

import java.time.LocalDateTime;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

import es.ucm.fdi.iw.model.User.Role;

@Entity
public class Event {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	private String name;
	private String description;
	private String location;
	private LocalDateTime date;
	private LocalDateTime publicationDate;

	@ManyToMany
	private List<Tags> tags;
	
	@ManyToMany
	private List<User> participants;
	
	@ManyToOne
	private User creator;
	
	public enum Access {
		CREATOR,
		PARTICIPANT,
		MINIMAL		
	};

	public Event() {
		super();
	}
	
	public Event(String name) {
		super();
		this.name = name;
	}

	public Event(long id, String name, String description, String location) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.location = location;
		this.date = LocalDateTime.now();
		this.publicationDate = LocalDateTime.now();
	}

	public Access checkAccess(User u) {
		if (u.getId() == creator.getId()) return Access.CREATOR;
		if (u.hasRole(Role.ADMIN) || participants.contains(u)) return Access.PARTICIPANT;
		return Access.MINIMAL;
	}

	
	public long getId() {
	return id;
	}
	
	public void setId(long id) {
		this.id = id;
	}
	
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescripcion() {
		return description;
	}

	public void setDescripcion(String description) {
		this.description = description;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public LocalDateTime getDate() {
		return date;
	}

	public void setDate(LocalDateTime date) {
		this.date = date;
	}

	public LocalDateTime getPublicationDate() {
		return publicationDate;
	}

	public void setPublicada(LocalDateTime publicationDate) {
		this.publicationDate = publicationDate;
	}

	public List<Tags> getTags() {
		return tags;
	}

	public void setTags(List<Tags> tags) {
		this.tags = tags;
	}

	public List<User> getParticipants() {
		return participants;
	}

	public void setParticipants(List<User> participants) {
		this.participants = participants;
	}

	public User getCreator() {
		return creator;
	}

	public void setCreator(User creator) {
		this.creator = creator;
	}



}
