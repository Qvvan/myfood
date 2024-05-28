// components/DishItem.js
import React from 'react';
import Card from '@mui/material/Card';
import CardContent from '@mui/material/CardContent';
import CardMedia from '@mui/material/CardMedia';
import Typography from '@mui/material/Typography';
import CardActionArea from '@mui/material/CardActionArea';

const DishItem = ({ dish }) => {
  return (
    <Card sx={{ maxWidth: 345 }}>
      <CardActionArea>
        <CardMedia
          component="img"
          height="140"
          image={dish.image_url}
          alt={dish.name}
        />
        <CardContent>
          <Typography gutterBottom variant="h5" component="div">
            {dish.name}
          </Typography>
          <Typography variant="body2" color="text.secondary">
            {dish.description}
          </Typography>
          <Typography variant="body2" color="text.primary">
            Цена: {dish.price} р
          </Typography>
        </CardContent>
      </CardActionArea>
    </Card>
  );
};

export default DishItem;
