// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4475,x:32719,y:32712,varname:node_4475,prsc:2|emission-183-OUT,clip-6962-A;n:type:ShaderForge.SFN_Tex2d,id:6962,x:32206,y:32876,ptovrint:False,ptlb:Sun,ptin:_Sun,varname:node_6962,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:4924a3d1eb1412745a7738c4bd667579,ntxv:0,isnm:False|UVIN-3553-UVOUT;n:type:ShaderForge.SFN_Color,id:7890,x:32209,y:32492,ptovrint:False,ptlb:Color1,ptin:_Color1,varname:node_7890,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.4758621,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:366,x:32209,y:32663,ptovrint:False,ptlb:Color2,ptin:_Color2,varname:_Color2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.8736308,c3:0.3455882,c4:1;n:type:ShaderForge.SFN_Lerp,id:183,x:32452,y:32629,varname:node_183,prsc:2|A-7890-RGB,B-366-RGB,T-6962-R;n:type:ShaderForge.SFN_Rotator,id:3553,x:31945,y:32880,varname:node_3553,prsc:2|UVIN-6099-UVOUT,ANG-2838-OUT;n:type:ShaderForge.SFN_TexCoord,id:6099,x:31649,y:32766,varname:node_6099,prsc:2,uv:0;n:type:ShaderForge.SFN_Time,id:4030,x:31376,y:32932,varname:node_4030,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2838,x:31649,y:32996,varname:node_2838,prsc:2|A-4030-T,B-333-OUT;n:type:ShaderForge.SFN_ValueProperty,id:333,x:31376,y:33096,ptovrint:False,ptlb:Speed,ptin:_Speed,varname:node_333,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;proporder:6962-7890-366-333;pass:END;sub:END;*/

Shader "Custom/SHD_Sun01" {
    Properties {
        _Sun ("Sun", 2D) = "white" {}
        _Color1 ("Color1", Color) = (1,0.4758621,0,1)
        _Color2 ("Color2", Color) = (1,0.8736308,0.3455882,1)
        _Speed ("Speed", Float ) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        LOD 200
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _Sun; uniform float4 _Sun_ST;
            uniform float4 _Color1;
            uniform float4 _Color2;
            uniform float _Speed;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 node_4030 = _Time + _TimeEditor;
                float node_3553_ang = (node_4030.g*_Speed);
                float node_3553_spd = 1.0;
                float node_3553_cos = cos(node_3553_spd*node_3553_ang);
                float node_3553_sin = sin(node_3553_spd*node_3553_ang);
                float2 node_3553_piv = float2(0.5,0.5);
                float2 node_3553 = (mul(i.uv0-node_3553_piv,float2x2( node_3553_cos, -node_3553_sin, node_3553_sin, node_3553_cos))+node_3553_piv);
                float4 _Sun_var = tex2D(_Sun,TRANSFORM_TEX(node_3553, _Sun));
                clip(_Sun_var.a - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = lerp(_Color1.rgb,_Color2.rgb,_Sun_var.r);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _Sun; uniform float4 _Sun_ST;
            uniform float _Speed;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 node_4030 = _Time + _TimeEditor;
                float node_3553_ang = (node_4030.g*_Speed);
                float node_3553_spd = 1.0;
                float node_3553_cos = cos(node_3553_spd*node_3553_ang);
                float node_3553_sin = sin(node_3553_spd*node_3553_ang);
                float2 node_3553_piv = float2(0.5,0.5);
                float2 node_3553 = (mul(i.uv0-node_3553_piv,float2x2( node_3553_cos, -node_3553_sin, node_3553_sin, node_3553_cos))+node_3553_piv);
                float4 _Sun_var = tex2D(_Sun,TRANSFORM_TEX(node_3553, _Sun));
                clip(_Sun_var.a - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
