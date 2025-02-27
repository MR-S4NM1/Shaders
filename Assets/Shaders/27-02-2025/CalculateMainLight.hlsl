#ifndef CUSTOM_LIGHTING_INCLUDED
#define CUSTOM_LIGHTING_INCLUDED

//  Obtiene una posici�n en el mundo y nos regresa una direcci�n y color de la luz en Unity
void CalculateMainLight_float(float3 WorldPos, out float3 Direction, out float3 Color)
{
    #if SHADERGRAPH_PREVIEW
    Direction = float3(0.5f, 0.5f, 0.0f);
    Color = 1;
    #else
    Light mainLight = GetMainLight(0);
    Direction = mainLight.direction;
    Color = mainLight.color;
    #endif
}

#endif