// components/DishList.js
import React, { useState, useEffect } from 'react';
import Grid from '@mui/material/Grid';
import Container from '@mui/material/Container';
import Typography from '@mui/material/Typography';
import DishItem from './DishItem';

const DishList = () => {
  const [dishes, setDishes] = useState([]);

  useEffect(() => {
    fetch('http://127.0.0.1:8000/api/v1/dishes/')
      .then(response => response.json())
      .then(data => setDishes(data))
      .catch(error => console.error('Error fetching dishes:', error));
  }, []);

  return (
    <Container>
      <Typography variant="h2" component="h1" gutterBottom>
        Меню
      </Typography>
      <Grid container spacing={4}>
        {dishes.map(dish => (
          <Grid item key={dish.id} xs={12} sm={6} md={4}>
            <DishItem dish={dish} />
          </Grid>
        ))}
      </Grid>
    </Container>
  );
};

export default DishList;
