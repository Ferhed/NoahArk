// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:2743,x:33407,y:32722,varname:node_2743,prsc:2|custl-6093-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:7539,x:31165,y:33007,varname:node_7539,prsc:2;n:type:ShaderForge.SFN_LightVector,id:4523,x:31166,y:32729,varname:node_4523,prsc:2;n:type:ShaderForge.SFN_Dot,id:3906,x:31360,y:32782,varname:node_3906,prsc:2,dt:1|A-4523-OUT,B-3697-OUT;n:type:ShaderForge.SFN_NormalVector,id:3697,x:31166,y:32852,prsc:2,pt:True;n:type:ShaderForge.SFN_Multiply,id:5530,x:31553,y:32782,varname:node_5530,prsc:2|A-3906-OUT,B-7539-OUT;n:type:ShaderForge.SFN_Step,id:4105,x:31782,y:32782,varname:node_4105,prsc:2|A-4940-OUT,B-5530-OUT;n:type:ShaderForge.SFN_Slider,id:4940,x:31396,y:32958,ptovrint:False,ptlb:ShadowSize,ptin:_ShadowSize,varname:node_4940,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0.5558133,max:1;n:type:ShaderForge.SFN_Lerp,id:7176,x:32457,y:32833,varname:node_7176,prsc:2|A-3973-OUT,B-5127-RGB,T-4105-OUT;n:type:ShaderForge.SFN_Multiply,id:5011,x:31981,y:32390,varname:node_5011,prsc:2|A-5127-RGB,B-4191-OUT;n:type:ShaderForge.SFN_Step,id:9859,x:31782,y:32912,varname:node_9859,prsc:2|A-6872-OUT,B-5530-OUT;n:type:ShaderForge.SFN_Slider,id:6872,x:31396,y:33048,ptovrint:False,ptlb:Highlight Size,ptin:_HighlightSize,varname:_ShadowSize_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0.9449629,max:1;n:type:ShaderForge.SFN_Multiply,id:6446,x:32019,y:32912,varname:node_6446,prsc:2|A-9859-OUT,B-6567-RGB;n:type:ShaderForge.SFN_Add,id:9055,x:32672,y:32833,varname:node_9055,prsc:2|A-7176-OUT,B-2014-OUT;n:type:ShaderForge.SFN_LightColor,id:6567,x:31502,y:32339,varname:node_6567,prsc:2;n:type:ShaderForge.SFN_OneMinus,id:4191,x:31741,y:32339,varname:node_4191,prsc:2|IN-6567-RGB;n:type:ShaderForge.SFN_Lerp,id:3973,x:32281,y:32353,varname:node_3973,prsc:2|A-5127-RGB,B-5011-OUT,T-9111-OUT;n:type:ShaderForge.SFN_Slider,id:9111,x:31824,y:32544,ptovrint:False,ptlb:Shadow Opacity,ptin:_ShadowOpacity,varname:node_9111,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.3396805,max:1;n:type:ShaderForge.SFN_Slider,id:1719,x:31824,y:32644,ptovrint:False,ptlb:Highlight Opacity,ptin:_HighlightOpacity,varname:node_1719,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2707379,max:1;n:type:ShaderForge.SFN_Lerp,id:2014,x:32253,y:32912,varname:node_2014,prsc:2|A-9406-OUT,B-6446-OUT,T-1719-OUT;n:type:ShaderForge.SFN_Vector1,id:9406,x:32019,y:33041,varname:node_9406,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2d,id:5127,x:31741,y:32144,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_5127,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:649f8b987a316f4479b3c0131c7c01ae,ntxv:0,isnm:False;n:type:ShaderForge.SFN_FragmentPosition,id:7851,x:30634,y:31413,varname:node_7851,prsc:2;n:type:ShaderForge.SFN_Append,id:782,x:31354,y:31289,cmnt:yz,varname:node_782,prsc:2|A-3899-G,B-3899-B;n:type:ShaderForge.SFN_Append,id:3281,x:31354,y:31449,cmnt:zx,varname:node_3281,prsc:2|A-3899-B,B-3899-R;n:type:ShaderForge.SFN_Append,id:2552,x:31354,y:31601,cmnt:yx,varname:node_2552,prsc:2|A-3899-G,B-3899-R;n:type:ShaderForge.SFN_Tex2dAsset,id:7272,x:31354,y:31821,ptovrint:False,ptlb:Paper,ptin:_Paper,varname:node_7272,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5168b2ed3b6951c439f466413539501e,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:4458,x:31656,y:31449,varname:node_4458,prsc:2,tex:5168b2ed3b6951c439f466413539501e,ntxv:0,isnm:False|UVIN-3281-OUT,TEX-7272-TEX;n:type:ShaderForge.SFN_Tex2d,id:7995,x:31656,y:31605,varname:node_7995,prsc:2,tex:5168b2ed3b6951c439f466413539501e,ntxv:0,isnm:False|UVIN-2552-OUT,TEX-7272-TEX;n:type:ShaderForge.SFN_ChannelBlend,id:9269,x:32086,y:31470,varname:node_9269,prsc:2,chbt:0|M-6271-OUT,R-9621-RGB,G-4458-RGB,B-7995-RGB;n:type:ShaderForge.SFN_NormalVector,id:1629,x:31342,y:30938,prsc:2,pt:True;n:type:ShaderForge.SFN_Abs,id:1733,x:31525,y:30938,varname:node_1733,prsc:2|IN-1629-OUT;n:type:ShaderForge.SFN_Multiply,id:6271,x:31721,y:30938,varname:node_6271,prsc:2|A-1733-OUT,B-1733-OUT;n:type:ShaderForge.SFN_Tex2d,id:9621,x:31656,y:31278,varname:node_9621,prsc:2,tex:5168b2ed3b6951c439f466413539501e,ntxv:0,isnm:False|UVIN-782-OUT,TEX-7272-TEX;n:type:ShaderForge.SFN_ObjectPosition,id:1202,x:30634,y:31559,varname:node_1202,prsc:2;n:type:ShaderForge.SFN_Subtract,id:9843,x:30831,y:31494,varname:node_9843,prsc:2|A-7851-XYZ,B-1202-XYZ;n:type:ShaderForge.SFN_ComponentMask,id:3899,x:31011,y:31494,varname:node_3899,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-9843-OUT;n:type:ShaderForge.SFN_Lerp,id:6093,x:33118,y:32839,varname:node_6093,prsc:2|A-9055-OUT,B-523-OUT,T-2044-OUT;n:type:ShaderForge.SFN_Multiply,id:523,x:32913,y:32865,varname:node_523,prsc:2|A-9055-OUT,B-9269-OUT;n:type:ShaderForge.SFN_Slider,id:2044,x:32756,y:33012,ptovrint:False,ptlb:Paper Opacity,ptin:_PaperOpacity,varname:node_2044,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;proporder:4940-9111-6872-1719-7272-5127-2044;pass:END;sub:END;*/

Shader "Custom/SH_Cartoon" {
    Properties {
        _ShadowSize ("ShadowSize", Range(-1, 1)) = 0.5558133
        _ShadowOpacity ("Shadow Opacity", Range(0, 1)) = 0.3396805
        _HighlightSize ("Highlight Size", Range(-1, 1)) = 0.9449629
        _HighlightOpacity ("Highlight Opacity", Range(0, 1)) = 0.2707379
        _Paper ("Paper", 2D) = "white" {}
        _MainTex ("MainTex", 2D) = "white" {}
        _PaperOpacity ("Paper Opacity", Range(0, 1)) = 0
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 200
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
            #pragma target 3.0
            uniform float _ShadowSize;
            uniform float _HighlightSize;
            uniform float _ShadowOpacity;
            uniform float _HighlightOpacity;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _Paper; uniform float4 _Paper_ST;
            uniform float _PaperOpacity;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float node_5530 = (max(0,dot(lightDirection,normalDirection))*attenuation);
                float node_9406 = 0.0;
                float3 node_9055 = (lerp(lerp(_MainTex_var.rgb,(_MainTex_var.rgb*(1.0 - _LightColor0.rgb)),_ShadowOpacity),_MainTex_var.rgb,step(_ShadowSize,node_5530))+lerp(float3(node_9406,node_9406,node_9406),(step(_HighlightSize,node_5530)*_LightColor0.rgb),_HighlightOpacity));
                float3 node_1733 = abs(normalDirection);
                float3 node_6271 = (node_1733*node_1733);
                float3 node_3899 = (i.posWorld.rgb-objPos.rgb).rgb;
                float2 node_782 = float2(node_3899.g,node_3899.b); // yz
                float4 node_9621 = tex2D(_Paper,TRANSFORM_TEX(node_782, _Paper));
                float2 node_3281 = float2(node_3899.b,node_3899.r); // zx
                float4 node_4458 = tex2D(_Paper,TRANSFORM_TEX(node_3281, _Paper));
                float2 node_2552 = float2(node_3899.g,node_3899.r); // yx
                float4 node_7995 = tex2D(_Paper,TRANSFORM_TEX(node_2552, _Paper));
                float3 finalColor = lerp(node_9055,(node_9055*(node_6271.r*node_9621.rgb + node_6271.g*node_4458.rgb + node_6271.b*node_7995.rgb)),_PaperOpacity);
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
            #pragma target 3.0
            uniform float _ShadowSize;
            uniform float _HighlightSize;
            uniform float _ShadowOpacity;
            uniform float _HighlightOpacity;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _Paper; uniform float4 _Paper_ST;
            uniform float _PaperOpacity;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float node_5530 = (max(0,dot(lightDirection,normalDirection))*attenuation);
                float node_9406 = 0.0;
                float3 node_9055 = (lerp(lerp(_MainTex_var.rgb,(_MainTex_var.rgb*(1.0 - _LightColor0.rgb)),_ShadowOpacity),_MainTex_var.rgb,step(_ShadowSize,node_5530))+lerp(float3(node_9406,node_9406,node_9406),(step(_HighlightSize,node_5530)*_LightColor0.rgb),_HighlightOpacity));
                float3 node_1733 = abs(normalDirection);
                float3 node_6271 = (node_1733*node_1733);
                float3 node_3899 = (i.posWorld.rgb-objPos.rgb).rgb;
                float2 node_782 = float2(node_3899.g,node_3899.b); // yz
                float4 node_9621 = tex2D(_Paper,TRANSFORM_TEX(node_782, _Paper));
                float2 node_3281 = float2(node_3899.b,node_3899.r); // zx
                float4 node_4458 = tex2D(_Paper,TRANSFORM_TEX(node_3281, _Paper));
                float2 node_2552 = float2(node_3899.g,node_3899.r); // yx
                float4 node_7995 = tex2D(_Paper,TRANSFORM_TEX(node_2552, _Paper));
                float3 finalColor = lerp(node_9055,(node_9055*(node_6271.r*node_9621.rgb + node_6271.g*node_4458.rgb + node_6271.b*node_7995.rgb)),_PaperOpacity);
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
