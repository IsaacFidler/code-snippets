---
Title: Controlled Component Form Template
Description: Code snippet for Controlled Component Form Template.
Tags:
  - TODO: add tags
---

```txt
import React, { useState } from 'react';

interface FormData {
  title: string;
  description: string;
  genre: string;
  capacity: string;
}

const EventForm = () => {
  const [formData, setFormData] = useState<FormData>({
    title: '',
    description: '',
    genre: '',
    capacity: ''
  });

  const [errors, setErrors] = useState<Partial<FormData>>({});
  const [isSubmitting, setIsSubmitting] = useState(false);

  const handleChange = (
    e: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement | HTMLSelectElement>
  ) => {
    const { name, value } = e.target;
    setFormData(prev => ({
      ...prev,
      [name]: value
    }));

    // Clear error when user starts typing
    if (errors[name as keyof FormData]) {
      setErrors(prev => ({
        ...prev,
        [name]: ''
      }));
    }
  };

  const validate = (): boolean => {
    const newErrors: Partial<FormData> = {};

    if (!formData.title.trim()) {
      newErrors.title = 'Title is required';
    }

    if (!formData.description.trim()) {
      newErrors.description = 'Description is required';
    }

    if (!formData.genre) {
      newErrors.genre = 'Genre is required';
    }

    if (!formData.capacity || parseInt(formData.capacity) <= 0) {
      newErrors.capacity = 'Capacity must be greater than 0';
    }

    setErrors(newErrors);
    return Object.keys(newErrors).length === 0;
  };

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();

    if (!validate()) {
      return;
    }

    setIsSubmitting(true);

    try {
      // Your submit logic here
      console.log('Form data:', formData);

      // Reset form on success
      setFormData({
        title: '',
        description: '',
        genre: '',
        capacity: ''
      });

    } catch (error) {
      console.error('Submission error:', error);
    } finally {
      setIsSubmitting(false);
    }
  };

  return (
    <form onSubmit={handleSubmit} className="event-form">
      <div className="form-group">
        <label htmlFor="title">Event Title *</label>
        <input
          type="text"
          id="title"
          name="title"
          value={formData.title}
          onChange={handleChange}
          disabled={isSubmitting}
          className={errors.title ? 'error' : ''}
          placeholder="Enter event title"
        />
        {errors.title && <span className="error-message">{errors.title}</span>}
      </div>

      <div className="form-group">
        <label htmlFor="description">Description *</label>
        <textarea
          id="description"
          name="description"
          value={formData.description}
          onChange={handleChange}
          disabled={isSubmitting}
          className={errors.description ? 'error' : ''}
          placeholder="Enter event description"
          rows={4}
        />
        {errors.description && <span className="error-message">{errors.description}</span>}
      </div>

      <div className="form-group">
        <label htmlFor="genre">Genre *</label>
        <select
          id="genre"
          name="genre"
          value={formData.genre}
          onChange={handleChange}
          disabled={isSubmitting}
          className={errors.genre ? 'error' : ''}
        >
          <option value="">Select a genre</option>
          <option value="ROCK">Rock</option>
          <option value="JAZZ">Jazz</option>
          <option value="ELECTRONIC">Electronic</option>
          <option value="CLASSICAL">Classical</option>
        </select>
        {errors.genre && <span className="error-message">{errors.genre}</span>}
      </div>

      <div className="form-group">
        <label htmlFor="capacity">Capacity *</label>
        <input
          type="number"
          id="capacity"
          name="capacity"
          value={formData.capacity}
          onChange={handleChange}
          disabled={isSubmitting}
          className={errors.capacity ? 'error' : ''}
          placeholder="Enter capacity"
          min="1"
        />
        {errors.capacity && <span className="error-message">{errors.capacity}</span>}
      </div>

      <button
        type="submit"
        disabled={isSubmitting}
        className="submit-button"
      >
        {isSubmitting ? 'Creating Event...' : 'Create Event'}
      </button>
    </form>
  );
};

export default EventForm;
```
